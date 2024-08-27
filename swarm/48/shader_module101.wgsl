struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(true, true, false, false, true, true, false, true, true, false, false, false, true, false, true, false, true, false, true, false, false, true, false, true, true, false, true, true, true, false, false);

var<private> global1: array<vec2<bool>, 6>;

var<private> global2: i32;

var<private> global3: array<Struct_1, 15>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>, arg_3: vec4<bool>) -> u32 {
    let var_0 = arg_0;
    var var_1 = Struct_1(-1i, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(select(~4294967295u, select(0u, u_input.a, false), true & arg_1), ~(~u_input.a), 1u), _wgslsmith_div_u32(~1u, 4968u) & (abs(17516u) ^ _wgslsmith_clamp_u32(var_0.b, 9467u, 74534u))));
    var var_2 = vec4<i32>(-13161i, max(_wgslsmith_div_i32(max(var_0.a, var_1.a), _wgslsmith_div_i32(60801i, var_1.a)), -1751i), u_input.b, 2147483647i) >> (~(min(reverseBits(vec4<u32>(0u, 0u, 27878u, 33509u)), select(vec4<u32>(3267u, var_1.b, var_1.b, u_input.a), vec4<u32>(u_input.a, var_1.b, u_input.a, 27863u), arg_1)) >> (((vec4<u32>(arg_0.b, 29060u, 1u, 4294967295u) >> (vec4<u32>(var_0.b, var_1.b, 4294967295u, 27950u) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b, var_1.b, 28276u, 4078u), vec4<u32>(4294967295u, 10390u, var_0.b, var_0.b))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_3 = var_2.yzw;
    global1 = array<vec2<bool>, 6>();
    return arg_0.b;
}

fn func_2() -> bool {
    let var_0 = 223f;
    var var_1 = global3[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_div_u32(u_input.a ^ _wgslsmith_sub_u32(25192u, 0u), ~countOneBits(u_input.a))), 15u)];
    global1 = array<vec2<bool>, 6>();
    var_1 = Struct_1(~u_input.c.x, firstTrailingBit(var_1.b) ^ var_1.b);
    var var_2 = global0[_wgslsmith_index_u32(1u, 31u)];
    return global0[_wgslsmith_index_u32(func_3(Struct_1(2147483647i, ~min(abs(u_input.a), ~u_input.a)), false, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(281f, var_0, -186f, 1325f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1166f, var_0, -1454f) * vec4<f32>(976f, var_0, var_0, var_0)) - vec4<f32>(var_0, 890f, -659f, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(206f, var_0, 834f, 948f)))), any(global1[_wgslsmith_index_u32(~1u >> (~var_1.b % 32u), 6u)]))), !select(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(30474u, 31u)], false, global0[_wgslsmith_index_u32(u_input.a, 31u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(76826u, 31u)], global0[_wgslsmith_index_u32(30391u, 31u)]), global0[_wgslsmith_index_u32(126354u, 31u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 31u)], true, true), any(vec4<bool>(false, false, global0[_wgslsmith_index_u32(79902u, 31u)], false)))), 31u)];
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec2<bool>, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(-16213i, select(arg_1, 25267u, (~u_input.a >> (21903u % 32u)) > ~(~4294967295u)));
    var var_1 = (~arg_1 >= 60427u) == select(!global0[_wgslsmith_index_u32(~(~u_input.a), 31u)], (arg_0 < _wgslsmith_f_op_f32(step(-481f, -786f))) | true, func_2());
    var_1 = any(vec3<bool>(true, _wgslsmith_mult_i32(firstLeadingBit(arg_3), var_0.a & arg_3) < arg_3, global0[_wgslsmith_index_u32(u_input.a, 31u)]));
    var var_2 = -abs(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, _wgslsmith_div_i32(reverseBits(arg_3), u_input.b), 2147483647i));
    var var_3 = false;
    return global3[_wgslsmith_index_u32(var_0.b, 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 31u)];
    let var_1 = Struct_1(u_input.c.x, ~(~(~u_input.a)));
    var var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -672f) * _wgslsmith_div_f32(709f, 1239f)))), ~_wgslsmith_add_u32(min(u_input.a, ~0u), _wgslsmith_mult_u32(~var_1.b, _wgslsmith_clamp_u32(u_input.a, 4294967295u, 73763u))), !global1[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_mult_i32(firstLeadingBit(-3602i << (u_input.a % 32u)), -39188i) ^ ~(~(-u_input.b)));
    let var_3 = 1i;
    let var_4 = var_3 >> (~var_1.b % 32u);
    global3 = array<Struct_1, 15>();
    let var_5 = global3[_wgslsmith_index_u32(u_input.a >> (~(1u << (reverseBits(var_1.b) % 32u)) % 32u), 15u)];
    var var_6 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-2147483647i, firstTrailingBit(_wgslsmith_add_i32(~var_1.a, _wgslsmith_mod_i32(0i, var_5.a)))), select(~(~(~vec2<u32>(var_2.b, var_2.b))), min(vec2<u32>(u_input.a, 0u), abs(vec2<u32>(var_1.b, 4294967295u))), global0[_wgslsmith_index_u32(90228u, 31u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1593f, 1000f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1162f, -382f), vec2<f32>(1081f, -854f)))), vec2<f32>(_wgslsmith_f_op_f32(-159f * 734f), 110f))));
}

