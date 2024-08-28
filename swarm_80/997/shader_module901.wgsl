struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<i32>(-25712i, 2147483647i, 2147483647i, 2147483647i)), Struct_1(vec4<i32>(-3368i, 109150i, -40067i, 7939i)), Struct_1(vec4<i32>(-1i, 2147483647i, 8547i, 0i)), Struct_1(vec4<i32>(-10517i, 2147483647i, -14211i, -34405i)), Struct_1(vec4<i32>(1i, 1i, 4958i, 18125i)), Struct_1(vec4<i32>(62195i, 2147483647i, -12606i, 0i)), Struct_1(vec4<i32>(40965i, -17008i, 22527i, 2147483647i)));

var<private> global1: bool;

var<private> global2: array<Struct_1, 22>;

var<private> global3: Struct_1;

var<private> global4: array<u32, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32) -> i32 {
    var var_0 = Struct_1(vec4<i32>(abs(_wgslsmith_mult_i32(arg_2, 13781i)), 2147483647i ^ arg_2, arg_2, arg_2) << (vec4<u32>(1u ^ max(global4[_wgslsmith_index_u32(u_input.d, 16u)], 1u), abs(7857u) << (firstLeadingBit(u_input.d) % 32u), u_input.d, u_input.d) % vec4<u32>(32u)));
    var var_1 = 698u;
    global1 = arg_1.x;
    var var_2 = global4[_wgslsmith_index_u32(u_input.d, 16u)];
    global3 = arg_0;
    return -u_input.c;
}

fn func_2() -> Struct_1 {
    global4 = array<u32, 16>();
    var var_0 = Struct_1(vec4<i32>(global3.a.x, global3.a.x, max(countOneBits(-9000i), ~global3.a.x), func_3(Struct_1(global3.a), vec2<bool>(true, true), u_input.c)) >> (~(~vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 16u)], u_input.d, global4[_wgslsmith_index_u32(4294967295u, 16u)], global4[_wgslsmith_index_u32(53235u, 16u)])) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(285f, -939f, 662f, 1001f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-736f, 533f, 1582f, -323f)))) + vec4<f32>(1f, 1f, 1f, 1f)) - vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1316f), _wgslsmith_f_op_f32(f32(-1f) * -1319f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1392f, -383f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3019f) - 996f) - _wgslsmith_f_op_f32(max(-674f, _wgslsmith_f_op_f32(-482f - 725f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1137f + -408f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(341f - 737f))), 1257f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(799f, -1507f)) + _wgslsmith_f_op_f32(round(-102f))))));
    global1 = all(vec2<bool>(select(-2147483647i >= _wgslsmith_add_i32(u_input.e.x, var_0.a.x), false, (global3.a.x == var_0.a.x) & any(vec3<bool>(false, true, false))), any(vec4<bool>(true, all(vec4<bool>(true, true, false, false)), true, true))));
    global4 = array<u32, 16>();
    return global0[_wgslsmith_index_u32(~1u, 7u)];
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 7>();
    return global0[_wgslsmith_index_u32(~(~18348u) >> (u_input.d % 32u), 7u)];
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 7>();
    let var_0 = vec2<u32>(_wgslsmith_div_u32(122397u, reverseBits(u_input.d) & ~(~1u)), _wgslsmith_mod_u32(reverseBits(0u), u_input.d));
    let var_1 = ~arg_0;
    let var_2 = ~var_0;
    let var_3 = vec3<bool>(true, false, ~_wgslsmith_div_u32(2893u, arg_0 & 23020u) >= ~0u);
    return func_4(func_2());
}

fn func_5(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-2284f))));
    let var_1 = func_2();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(249f - _wgslsmith_f_op_f32(624f + -1087f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -263f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))))), 1305f);
    let var_3 = ~u_input.d;
    let var_4 = func_2();
    return !vec4<bool>(!any(vec4<bool>(false, false, true, false)) & true, true, true, false);
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global4 = array<u32, 16>();
    return global2[_wgslsmith_index_u32(u_input.d, 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    global0 = array<Struct_1, 7>();
    let var_1 = func_6(select(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(false, true, false, false), true), func_5(func_1(0u, global2[_wgslsmith_index_u32(28532u, 22u)])), all(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true), false), func_4(func_1(~(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(33139u, 16u)], 16u)], 16u)]), func_2())), Struct_1(global3.a ^ vec4<i32>(0i, _wgslsmith_div_i32(global3.a.x, 0i), _wgslsmith_add_i32(-2147483647i, 1i), global3.a.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(104f, -804f, false)))) + var_0), 688f)));
    let var_3 = ~(vec4<u32>(_wgslsmith_div_u32(u_input.d, u_input.d) | 38574u, 4294967295u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 4294967295u), vec3<u32>(global4[_wgslsmith_index_u32(u_input.d, 16u)], global4[_wgslsmith_index_u32(u_input.d, 16u)], 28447u)), global4[_wgslsmith_index_u32(0u, 16u)], 12925u) ^ ~(~reverseBits(vec4<u32>(42169u, 0u, global4[_wgslsmith_index_u32(7404u, 16u)], 21762u))));
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1276f, var_0)) - -1818f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-501f)), _wgslsmith_f_op_f32(f32(-1f) * -1131f), false))) + var_0), all(select(vec3<bool>(global4[_wgslsmith_index_u32(0u, 16u)] <= var_3.x, all(vec4<bool>(false, false, false, false)), select(false, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), all(vec4<bool>(false, true, true, true)))))));
    let var_5 = u_input.b;
    var var_6 = vec4<bool>(_wgslsmith_f_op_f32(abs(126f)) != var_0, func_5(var_1).x, !(!any(vec4<bool>(false, false, true, false))), true);
    var var_7 = var_6.zx;
    let x = u_input.a;
    s_output = StorageBuffer(-1236f, _wgslsmith_clamp_vec4_i32(~vec4<i32>(-18923i, 1i, global3.a.x, 50054i), vec4<i32>(var_5, _wgslsmith_mult_i32(-1477i, u_input.c), var_5, firstTrailingBit(-20490i)), _wgslsmith_mod_vec4_i32(max(global3.a, var_1.a), var_1.a)) & func_1(global4[_wgslsmith_index_u32(u_input.d, 16u)], global2[_wgslsmith_index_u32(reverseBits(var_3.x), 22u)]).a, var_3.x);
}

