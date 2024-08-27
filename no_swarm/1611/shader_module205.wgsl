struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(0u, 51273u, 45266u, 4340u, 78188u, 57618u, 4294967295u, 37852u, 1u, 9599u, 11879u, 18889u, 46770u, 4294967295u, 4294967295u, 9010u, 37568u, 1u, 4294967295u, 7181u, 11240u, 38507u, 3552u, 71921u, 99232u, 4294967295u, 1064u, 77386u, 15819u);

var<private> global1: array<Struct_1, 28>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    let var_0 = ~firstTrailingBit(2147483647i) <= _wgslsmith_div_i32(~countOneBits(-39402i) | (_wgslsmith_div_i32(1i, 1i) >> (~u_input.b.x % 32u)), -1i);
    global0 = array<u32, 29>();
    var var_1 = vec2<u32>(~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(25651u, 19013u), 29u)] & ~u_input.b.x, 0u);
    var var_2 = 1033f;
    var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1603f)));
    return 174278u;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> vec2<bool> {
    global0 = array<u32, 29>();
    var var_0 = true;
    global0 = array<u32, 29>();
    let var_1 = max(vec3<i32>(arg_2.x, abs(arg_2.x), arg_2.x) << (firstTrailingBit(vec3<u32>(9748u, 1u, 49278u)) % vec3<u32>(32u)), -(~vec3<i32>(arg_2.x, 0i, -10727i))) & (vec3<i32>(-2147483647i, -8869i, countOneBits(_wgslsmith_clamp_i32(arg_2.x, 2147483647i, arg_2.x))) >> (vec3<u32>(firstLeadingBit(u_input.b.x), ~global0[_wgslsmith_index_u32(max(u_input.b.x, arg_3), 29u)], ~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(394f, -799f, false)), _wgslsmith_f_op_f32(-452f * -1000f), any(vec4<bool>(arg_0, arg_0, arg_0, arg_1.b)))), -1034f))), _wgslsmith_f_op_f32(max(1151f, 1000f)), true));
    return !(!vec2<bool>(true, !all(vec4<bool>(false, false, arg_1.b, arg_1.a))));
}

fn func_2() -> i32 {
    var var_0 = true;
    let var_1 = ~(~u_input.b.x);
    let var_2 = Struct_1(any(select(vec2<bool>(all(vec3<bool>(true, false, false)), false), !func_3(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 28u)], vec2<i32>(-46208i, -20289i), 1u), (u_input.a <= 7490u) & all(vec3<bool>(false, true, true)))), !(!(all(vec2<bool>(true, true)) && true)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(1993f)), 814f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-403f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-814f - -1000f) * _wgslsmith_f_op_f32(floor(1847f))))), -1000f);
    var_0 = all(!vec2<bool>(true, var_2.b));
    return (-_wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, -1i, -1i), abs(1i)) >> (~900u % 32u)) ^ -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (u_input.b.x & _wgslsmith_div_u32(func_1(vec4<u32>(2337u, u_input.b.x, u_input.b.x, 1u) | vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 29u)], 1u, 48674u)), ~40737u)) >> (min(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], ~select(func_1(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 29u)], u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b.x, true)) % 32u);
    global0 = array<u32, 29>();
    var var_1 = !(!(_wgslsmith_f_op_f32(floor(-1000f)) < -422f));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0, 1u & u_input.b.x), 28u)];
    global0 = array<u32, 29>();
    let var_3 = Struct_1(true, true);
    var var_4 = select(vec4<bool>(all(vec4<bool>(var_2.a, var_2.b, true, true)), true, 0i <= min(func_2(), 81144i), true), !vec4<bool>(true, !(var_2.a | true), true, !any(vec3<bool>(true, var_2.b, true))), select(select(vec4<bool>(u_input.a >= var_0, true, select(var_3.b, var_3.a, false), var_3.b | var_3.b), select(vec4<bool>(var_3.a, var_3.a, var_2.b, var_2.b), !vec4<bool>(var_2.b, var_2.a, var_3.b, true), select(vec4<bool>(var_3.a, var_3.a, false, var_2.b), vec4<bool>(var_3.b, var_2.a, true, false), vec4<bool>(false, true, var_2.a, var_3.b))), false), !select(select(vec4<bool>(var_2.b, var_3.b, var_3.a, true), vec4<bool>(true, false, true, var_2.b), var_2.a), !vec4<bool>(var_2.a, var_2.b, false, false), vec4<bool>(true, true, true, var_2.b)), vec4<bool>(true, true, var_3.b, all(vec3<bool>(true, true, false)))));
    var var_5 = global1[_wgslsmith_index_u32(var_0, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-757f, -1370f, -1198f))), vec3<f32>(-794f, 146f, 706f), var_4.wwx))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1260f, -416f, -705f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(690f, 628f, -294f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-568f, -701f, 697f))))), vec3<i32>(abs(reverseBits(13616i)), _wgslsmith_mod_i32(_wgslsmith_add_i32(i32(-1i) * -9377i, ~3397i), _wgslsmith_add_i32(-2147483647i, ~(-1i))), -(~(i32(-1i) * -2896i))));
}

