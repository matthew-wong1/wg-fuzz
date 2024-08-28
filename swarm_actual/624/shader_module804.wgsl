struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(2147483647i, -495f, -1i), -771f, 83370u, Struct_1(12668i, -1126f, 4920i)), Struct_2(Struct_1(0i, -682f, -54449i), 683f, 1u, Struct_1(26628i, -1094f, 68733i)), Struct_2(Struct_1(12278i, -1192f, 15661i), -1017f, 1u, Struct_1(-1i, 601f, 7012i)), Struct_2(Struct_1(2147483647i, -192f, -32576i), 942f, 0u, Struct_1(-23841i, -385f, 0i)));

var<private> global1: Struct_2;

var<private> global2: array<i32, 29>;

var<private> global3: array<f32, 10> = array<f32, 10>(1351f, 889f, 632f, -794f, 1379f, 714f, 471f, 508f, -282f, -1022f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    return _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(992u, global1.c), vec2<u32>(u_input.c >> (global1.c % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, 1u, 34837u), vec4<u32>(14966u, global1.c, global1.c, 1u)))) & ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), _wgslsmith_add_vec2_u32(vec2<u32>(5962u, global1.c), vec2<u32>(4294967295u, u_input.c))), countOneBits(countOneBits(vec2<u32>(~global1.c, 1u))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global3 = array<f32, 10>();
    var var_0 = _wgslsmith_div_vec2_u32(~(vec2<u32>(~68927u, 0u) >> (func_3(global1.a) % vec2<u32>(32u))), max(_wgslsmith_mod_vec2_u32(vec2<u32>(~0u, 28213u), select(func_3(Struct_1(u_input.a, 647f, 54448i)), abs(vec2<u32>(124u, 1u)), true)), ~abs(vec2<u32>(16596u, 22882u))));
    let var_1 = Struct_3(all(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true))), _wgslsmith_sub_u32(max(14501u, 4294967295u), 1u), global0[_wgslsmith_index_u32(u_input.c, 4u)], Struct_2(global1.d, global1.b, _wgslsmith_mod_u32(min(_wgslsmith_mod_u32(14635u, global1.c), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 70526u, 22756u, 50761u), vec4<u32>(1u, u_input.c, global1.c, u_input.c))), 53834u), global1.d), 10424u);
    let var_2 = Struct_2(var_1.c.d, var_1.c.d.b, var_0.x, Struct_1(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(u_input.c | 13777u, 10u)], _wgslsmith_f_op_f32(global1.b + 373f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1131f)))), ~39695i));
    global1 = global0[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(17445u, var_2.c) >> (37250u % 32u)), 4u)];
    return var_1.d.d;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(func_2(vec3<i32>(-2147483647i, u_input.b.x, global2[_wgslsmith_index_u32(u_input.c, 29u)])), _wgslsmith_f_op_f32(-global1.a.b), countOneBits(global1.c), func_2(vec3<i32>(u_input.a, reverseBits(-u_input.a), 1i)));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.c, var_0.c), 4u)];
    let var_2 = _wgslsmith_mult_vec3_u32(select(~firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.c, 17910u, 24501u), vec3<u32>(var_1.c, 1u, global1.c))), firstLeadingBit(abs(vec3<u32>(var_1.c, 59715u, 4294967295u) ^ vec3<u32>(global1.c, u_input.c, 4294967295u))), vec3<bool>(false, false, true)), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~1u, var_0.c, global1.c), (var_1.c & 27288u) | (global1.c | 3821u)), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.c, var_0.c) & vec3<u32>(u_input.c, 1u, var_0.c), reverseBits(vec3<u32>(4294967295u, 0u, u_input.c)))), firstLeadingBit(_wgslsmith_mult_u32(abs(4294967295u), firstLeadingBit(4294967295u)))));
    let var_3 = _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(firstTrailingBit(25112u), 29u)], 48594i, countOneBits(u_input.a));
    global1 = Struct_2(var_0.a, _wgslsmith_f_op_f32(ceil(406f)), var_1.c, func_2(_wgslsmith_clamp_vec3_i32(u_input.b.xwx, u_input.b.xzw, _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.wxy, u_input.b.zxy), vec3<i32>(var_0.d.a, 28536i, -1i)))));
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(func_1(), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32((u_input.c ^ _wgslsmith_sub_u32(u_input.c, u_input.c)) & (u_input.c >> (_wgslsmith_mod_u32(0u, global1.c) % 32u)), 10u)] + _wgslsmith_f_op_f32(-1511f - _wgslsmith_f_op_f32(abs(-529f)))), global1.c, Struct_1(-min(1i, _wgslsmith_mod_i32(-1i, -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(818f)) + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1.c, 10u)])), _wgslsmith_div_i32(23574i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(min(max(vec4<u32>(u_input.c, 30192u, global1.c, 25258u), vec4<u32>(u_input.c, u_input.c, global1.c, u_input.c)), vec4<u32>(1u, 4294967295u, 88682u, u_input.c)) ^ min(~vec4<u32>(global1.c, 4294967295u, 4294967295u, 81500u), ~vec4<u32>(75860u, u_input.c, 4294967295u, 53580u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.c, 10u)] - 1085f), _wgslsmith_f_op_f32(step(575f, global3[_wgslsmith_index_u32(u_input.c, 10u)]))))));
}

