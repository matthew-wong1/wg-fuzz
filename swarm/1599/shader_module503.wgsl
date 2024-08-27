struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<vec4<u32>, 1>;

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(0u), Struct_1(0u), Struct_1(4294967295u), Struct_1(14280u), Struct_1(25288u), Struct_1(1u), Struct_1(0u), Struct_1(1u), Struct_1(91262u), Struct_1(15784u), Struct_1(94518u), Struct_1(4294967295u), Struct_1(0u), Struct_1(1u), Struct_1(1u), Struct_1(1u), Struct_1(4294967295u), Struct_1(10464u), Struct_1(1u), Struct_1(0u), Struct_1(81295u), Struct_1(1u), Struct_1(0u), Struct_1(58237u), Struct_1(27754u), Struct_1(37128u), Struct_1(1u), Struct_1(18136u), Struct_1(1u));

var<private> global2: array<u32, 6> = array<u32, 6>(106070u, 1543u, 4294967295u, 0u, 50288u, 86956u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>) -> i32 {
    global0 = array<vec4<u32>, 1>();
    var var_0 = arg_1.zw;
    global2 = array<u32, 6>();
    global0 = array<vec4<u32>, 1>();
    return firstTrailingBit(reverseBits(7895i) << (var_0.x % 32u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec4<u32> {
    let var_0 = Struct_1(3885u);
    var var_1 = select(any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), any(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), select(all(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), false)) || true;
    global0 = array<vec4<u32>, 1>();
    global2 = array<u32, 6>();
    let var_2 = !select(false, true, true);
    return (global0[_wgslsmith_index_u32(95430u, 1u)] >> (vec4<u32>(_wgslsmith_sub_u32(arg_2, arg_1.a), abs(arg_2), 25529u, 1u) % vec4<u32>(32u))) << (global0[_wgslsmith_index_u32(countOneBits(~var_0.a), 1u)] % vec4<u32>(32u));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = func_1(vec2<i32>(i32(-1i) * -2147483647i, u_input.a), abs(min(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(37445u, 6u)])), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, global2[_wgslsmith_index_u32(52469u, 6u)]), vec2<u32>(88733u, 4294967295u))), 1u)], func_3(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~41290u, 6u)], 29u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32526u, 6u)], 6u)], 6u)], 6u)], 0u), 29u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(0u, 6u)], 45090u, 58063u), 6u)]))));
    var var_1 = vec2<u32>(48284u, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6134u, 6u)], 6u)], 6u)] & ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3113u, 6u)], 6u)], 6u)], 6u)], 0u & global2[_wgslsmith_index_u32(min(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26037u, 6u)], 6u)], 6u)]), 6u)]) ^ 28530u, 6u)]);
    var var_2 = vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6200u, 6u)], 6u)], var_1.x);
    let var_3 = global1[_wgslsmith_index_u32(~(~max(4294967295u, var_1.x)), 29u)];
    let var_4 = ~min(firstLeadingBit(_wgslsmith_mult_i32(-47687i, -u_input.a)), 5743i);
    return Struct_1(_wgslsmith_dot_vec3_u32(~firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 4829u, 94637u), vec3<u32>(var_3.a, var_2.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.x, 6u)], 6u)]))), ~(~vec3<u32>(var_2.x, 6762u, 28008u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = arg_1.x;
    let var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_add_u32(0u, ~50128u)), 1u)];
    var var_2 = Struct_1(~(~_wgslsmith_sub_u32(min(65340u, arg_3.a), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)])));
    var_0 = firstLeadingBit(_wgslsmith_div_u32(4294967295u, ~(~_wgslsmith_div_u32(var_1.x, 31654u))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1986f) + 1f) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(935f, 678f), _wgslsmith_f_op_f32(min(2143f, 585f)), true)))));
    return _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec3_i32(max(-(arg_2 & arg_2), arg_2), (arg_2 | (arg_2 & vec3<i32>(-1i, 0i, u_input.a))) ^ vec3<i32>(abs(arg_2.x), -544i, _wgslsmith_add_i32(19424i, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 1>();
    let var_0 = vec2<i32>(~(-u_input.a), u_input.a) & select(vec2<i32>(-1i) * -max(vec2<i32>(-2147483647i, -15040i), vec2<i32>(40080i, -1i)), vec2<i32>(func_1(-vec2<i32>(0i, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(1u, 6u)], 1u, global2[_wgslsmith_index_u32(1u, 6u)]), vec4<u32>(47995u, global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 74169u))), func_4(global1[_wgslsmith_index_u32(0u, 29u)], firstLeadingBit(vec3<u32>(0u, global2[_wgslsmith_index_u32(24731u, 6u)], 32058u)), vec3<i32>(-13859i, u_input.a, -31501i), func_2(false))), true);
    var var_1 = global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30010u, 6u)], 29u)];
    global1 = array<Struct_1, 29>();
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 29u)];
    let var_3 = 653f;
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-252f, _wgslsmith_f_op_f32(-2034f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(455f, -574f)) * var_3)), _wgslsmith_f_op_f32(-967f * var_3), var_3));
    let var_5 = vec3<f32>(var_4.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(-226f - -1036f))))))));
    var_2 = func_2(false);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x);
}

