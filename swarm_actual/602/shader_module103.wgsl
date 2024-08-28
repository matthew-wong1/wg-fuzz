struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: array<u32, 29> = array<u32, 29>(4294967295u, 0u, 4294967295u, 0u, 1u, 4294967295u, 365u, 51012u, 4294967295u, 11526u, 1u, 0u, 0u, 4294967295u, 12734u, 1u, 31956u, 4294967295u, 46252u, 27382u, 44708u, 37352u, 4294967295u, 0u, 37655u, 4294967295u, 1544u, 1u, 0u);

var<private> global3: i32 = -3341i;

var<private> global4: vec2<bool>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = global0.b;
    var var_1 = reverseBits(select(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(~1u, 29u)]), ~(~(~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], 92459u))), ~4294967295u > abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 29u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)], global2[_wgslsmith_index_u32(65646u, 29u)], 16007u), vec4<u32>(0u, 38942u, 1u, 71404u)))));
    var_1 = vec2<u32>(0u, ~_wgslsmith_div_u32(~1u & ~var_1.x, countOneBits(0u) << (global2[_wgslsmith_index_u32(1u, 29u)] % 32u)));
    let var_2 = Struct_1(-214f);
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(-778f, -1265f))), Struct_1(global1.b.a));
    return -_wgslsmith_add_i32(-7848i, -70939i) & (_wgslsmith_add_i32(-1i, 8204i) | u_input.a);
}

fn func_2() -> Struct_2 {
    let var_0 = true;
    var var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32((vec2<i32>(42184i, u_input.a) ^ vec2<i32>(0i, u_input.a)) & vec2<i32>(30095i, 1i), _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a, -40451i), vec2<i32>(-1i, u_input.a))), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, ~u_input.a), abs(vec2<i32>(-2147483647i, u_input.a) | vec2<i32>(-28727i, -67662i)))) ^ -_wgslsmith_add_vec2_i32(max(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, -9236i)), reverseBits(vec2<i32>(u_input.a, -1i))), vec2<i32>(-35468i, func_3()));
    var var_2 = _wgslsmith_div_vec2_u32(firstLeadingBit(firstTrailingBit(vec2<u32>(1u, 75841u))), _wgslsmith_add_vec2_u32(firstLeadingBit(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], 29u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 29u)], 29u)]), vec2<u32>(77888u, global2[_wgslsmith_index_u32(4294967295u, 29u)])))), vec2<u32>(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 29u)], 29u)]), ~global2[_wgslsmith_index_u32(abs(1u), 29u)])));
    let var_3 = Struct_1(global0.b.a);
    var var_4 = vec4<u32>(max(~(~4294967295u), firstTrailingBit(var_2.x)) >> (var_2.x % 32u), _wgslsmith_mult_u32(~(0u | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(90206u, 29u)] & 52070u, 29u)]), ~9437u), abs(countOneBits(35020u)), var_2.x);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global1.a);
}

fn func_1() -> Struct_2 {
    global1 = func_2();
    global4 = !vec2<bool>(all(select(!vec2<bool>(global4.x, true), select(vec2<bool>(true, global4.x), vec2<bool>(true, global4.x), vec2<bool>(true, global4.x)), true)), !(!global4.x && (global4.x && true)));
    var var_0 = func_2();
    let var_1 = Struct_2(global1.a, Struct_1(-2275f));
    var var_2 = func_2();
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> u32 {
    return global2[_wgslsmith_index_u32(~1u, 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~reverseBits(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(1u, 29u)], 4294967295u)), 36084u, ~global2[_wgslsmith_index_u32(func_4(func_1(), true, global1.b), 29u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(select(global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(31796u, 29u)], 29u)], global4.x), 29u)], 29u)] >> (global2[_wgslsmith_index_u32(44748u, 29u)] % 32u)) >> (~vec4<u32>(_wgslsmith_div_u32(1u, reverseBits(4294967295u)), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(100982u, 1u), 29u)], 29u)], global2[_wgslsmith_index_u32(~20568u, 29u)], 69832u) % vec4<u32>(32u));
    var var_1 = ~var_0.zz;
    let var_2 = select(vec4<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.a)) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.a, global1.b.a)), global4.x, any(vec3<bool>(!global4.x, global4.x, true))), !select(vec4<bool>(global4.x, true, global4.x, any(vec2<bool>(true, false))), vec4<bool>(global4.x, select(global4.x, true, global4.x), !global4.x, global4.x), any(vec2<bool>(true, true))), !vec4<bool>(true, !global4.x, true, global4.x));
    let var_3 = Struct_1(-2216f);
    let var_4 = global0.a;
    let var_5 = vec2<u32>(~(~var_0.x), func_4(Struct_2(global1.b, func_2().a), _wgslsmith_mult_u32(abs(1802u), ~global2[_wgslsmith_index_u32(20965u, 29u)]) != var_0.x, func_2().a));
    let var_6 = any(vec3<bool>(all(select(vec2<bool>(var_2.x, global4.x), select(var_2.wy, var_2.xw, var_2.zw), true)), true, !(_wgslsmith_mod_u32(var_0.x, var_5.x) == select(var_0.x, var_0.x, var_2.x))));
    var var_7 = Struct_2(func_1().a, func_1().b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.a, -202f, 124f, -659f)) - vec4<f32>(global1.b.a, 2951f, -636f, -1060f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(319f, global1.b.a, 725f), vec3<f32>(var_3.a, 1828f, -708f)))))), func_2().a.a, _wgslsmith_mult_vec2_i32(firstLeadingBit(~(-vec2<i32>(-2051i, 20082i))), ~(-vec2<i32>(u_input.a, u_input.a)) & (vec2<i32>(u_input.a, u_input.a) << (var_5 % vec2<u32>(32u)))), var_0.x);
}

