struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global2: array<i32, 12> = array<i32, 12>(7894i, -28617i, -6138i, 2147483647i, 2147483647i, -43652i, 0i, 2147483647i, -1i, -26600i, 17652i, 0i);

var<private> global3: i32;

var<private> global4: Struct_2;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: u32, arg_3: vec3<u32>) -> Struct_5 {
    let var_0 = ~(~abs(_wgslsmith_div_vec2_i32(vec2<i32>(0i, arg_1.x), vec2<i32>(u_input.a, u_input.a) & vec2<i32>(global2[_wgslsmith_index_u32(arg_3.x, 12u)], global2[_wgslsmith_index_u32(81315u, 12u)]))));
    return Struct_5(global4.a);
}

fn func_3() -> f32 {
    let var_0 = global4.a.a;
    global0 = array<vec4<bool>, 32>();
    var var_1 = Struct_4(func_2(~_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(1u, 0u, 4294967295u)), vec3<u32>(1u, 1u, 1u)), vec2<i32>(_wgslsmith_mult_i32(u_input.a, 1i), _wgslsmith_mod_i32(1i | u_input.a, -2147483647i)), ~0u, reverseBits(vec3<u32>(1u, 1u, 1u))).a);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.a.b, 1108f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-809f, global4.a.b) * _wgslsmith_f_op_f32(sign(-1166f))))), ~vec2<i32>(u_input.a, 21948i), var_1.a);
    var var_3 = global4.a;
    return _wgslsmith_f_op_f32(sign(var_2.a));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: f32) -> vec2<i32> {
    var var_0 = arg_0.a.a;
    global3 = _wgslsmith_dot_vec4_i32(countOneBits(countOneBits(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, 17096i, u_input.a, 1i), abs(vec4<i32>(global2[_wgslsmith_index_u32(0u, 12u)], u_input.a, -16350i, global2[_wgslsmith_index_u32(4294967295u, 12u)]))))), ~(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 20726i, u_input.a, -16921i), vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(1u, 12u)], u_input.a, u_input.a)) ^ -vec4<i32>(global2[_wgslsmith_index_u32(1u, 12u)], 2147483647i, u_input.a, 2147483647i)) ^ (~max(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -4422i, 2147483647i)) | vec4<i32>(u_input.a, firstLeadingBit(u_input.a), _wgslsmith_add_i32(-2147483647i, u_input.a), ~0i)));
    var var_1 = func_2(max(~vec3<u32>(1u, 1u, 1u), ~(~firstLeadingBit(vec3<u32>(15028u, 0u, 1u)))), firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(14722u, 12u)], global2[_wgslsmith_index_u32(12310u, 12u)], global2[_wgslsmith_index_u32(52578u, 12u)], -51181i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 0i, global2[_wgslsmith_index_u32(4294967295u, 12u)], u_input.a), vec4<i32>(36577i, 2147483647i, u_input.a, -21575i), vec4<i32>(u_input.a, -2147483647i, 1i, 26152i))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, 8u, 91955u), ~0u), 12u)])), 14885u, vec3<u32>(1u, 1u, 1u)).a;
    let var_2 = arg_0.a;
    let var_3 = ~firstTrailingBit(vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(0u, 107112u, 0u)), 13783u) | vec3<u32>(1u, 1u, 1u));
    return vec2<i32>(-(~(-2147483647i)), -(global2[_wgslsmith_index_u32(~var_3.x, 12u)] & (u_input.a & 9207i))) & -max(-vec2<i32>(1i, 1i), ~vec2<i32>(u_input.a, u_input.a));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> i32 {
    var var_0 = ~func_4(func_2(firstLeadingBit(vec3<u32>(15669u, 4294967295u, 1u)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, global2[_wgslsmith_index_u32(10063u, 12u)]), vec2<i32>(0i, global2[_wgslsmith_index_u32(0u, 12u)])), 19711u, ~vec3<u32>(44189u, arg_0, arg_0)), Struct_2(Struct_1(global4.a.a, -2292f, arg_1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), -215f))) & func_4(func_2(vec3<u32>(~4294967295u, ~0u, _wgslsmith_add_u32(arg_0, arg_0)), -vec2<i32>(-74170i, -2147483647i), _wgslsmith_dot_vec4_u32(max(vec4<u32>(15636u, arg_0, arg_0, 21022u), vec4<u32>(103922u, 1u, 0u, arg_0)), ~vec4<u32>(54914u, 1u, 50068u, 3033u)), vec3<u32>(1u << (arg_0 % 32u), ~73539u, arg_0)), Struct_2(func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(73419u, arg_0, 1u), vec3<u32>(31457u, arg_0, arg_0)), vec2<i32>(global2[_wgslsmith_index_u32(arg_0, 12u)], 37596i), countOneBits(0u), vec3<u32>(arg_0, arg_0, arg_0)).a), 1447f);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -482f), _wgslsmith_f_op_f32(func_3()), global4.a.b, -988f))));
    var var_2 = abs(vec4<i32>(min(select(1i, _wgslsmith_mult_i32(u_input.a, 18589i), global1.x), countOneBits(u_input.a & -1i)), var_0.x, 1i & global2[_wgslsmith_index_u32(~30692u, 12u)], min(-31126i, reverseBits(u_input.a)) | abs(global2[_wgslsmith_index_u32(select(7368u, arg_0, global4.a.a), 12u)])));
    global4 = Struct_2(global4.a);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * 1260f), min(_wgslsmith_add_vec2_i32(vec2<i32>(21220i, ~var_2.x), ~countOneBits(vec2<i32>(11450i, 0i))), vec2<i32>(abs(global2[_wgslsmith_index_u32(~arg_0, 12u)]), -_wgslsmith_clamp_i32(-8453i, var_2.x, 2147483647i))), global4.a);
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(~4294967295u, vec2<f32>(1533f, 104f));
    global1 = !select(vec4<bool>(false, true | global4.a.a, true, !global1.x), !global0[_wgslsmith_index_u32(~6065u, 32u)], true);
    global4 = Struct_2(func_2(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 31398u, 82639u, 33497u), vec4<u32>(62447u, 44516u, 3702u, 0u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(4170u, 0u), abs(vec2<u32>(11045u, 0u))), 8186u), (abs(vec2<i32>(u_input.a, u_input.a)) >> (~vec2<u32>(4461u, 4294967295u) % vec2<u32>(32u))) & _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(2147483647i, u_input.a)), vec2<i32>(global2[_wgslsmith_index_u32(12839u, 12u)], u_input.a)), 5499u, ~abs(vec3<u32>(1u, 1u, 1u))).a);
    var var_0 = global4.a.c;
    let var_1 = vec4<i32>(i32(-1i) * -49588i, select(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(34339u, 46814u), vec2<u32>(82677u, 5859u)), 12u)], _wgslsmith_dot_vec3_i32(max(vec3<i32>(5476i, 0i, 7480i), vec3<i32>(-16138i, 0i, -11780i)), select(vec3<i32>(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)], -19574i), vec3<i32>(u_input.a, global2[_wgslsmith_index_u32(85856u, 12u)], -17215i) & vec3<i32>(-2147483647i, u_input.a, global2[_wgslsmith_index_u32(0u, 12u)]), select(global1.zwz, vec3<bool>(global1.x, global4.a.a, global1.x), global4.a.a))), !(952f == global4.a.b)), u_input.a, ~(-1728i));
    let var_2 = ~select(firstLeadingBit(~1u), 0u, !(!all(global1.xzx)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_2), 140445u, ~abs(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2, 25886u), vec2<u32>(var_2, 0u)))));
}

