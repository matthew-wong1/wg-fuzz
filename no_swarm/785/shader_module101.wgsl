struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, false), 0u);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 2>;

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<bool>(true, false, false), 0u), Struct_1(vec3<bool>(true, true, false), 1u), Struct_1(vec3<bool>(true, false, true), 113468u), Struct_1(vec3<bool>(false, false, false), 58706u), Struct_1(vec3<bool>(false, true, true), 73008u), Struct_1(vec3<bool>(true, false, true), 60795u), Struct_1(vec3<bool>(true, false, true), 18634u), Struct_1(vec3<bool>(false, false, true), 91082u), Struct_1(vec3<bool>(false, false, true), 8589u), Struct_1(vec3<bool>(true, false, false), 4294967295u), Struct_1(vec3<bool>(true, true, true), 1u), Struct_1(vec3<bool>(true, false, true), 1u), Struct_1(vec3<bool>(false, false, true), 0u), Struct_1(vec3<bool>(false, false, true), 1u), Struct_1(vec3<bool>(true, false, true), 1u), Struct_1(vec3<bool>(true, true, true), 1u), Struct_1(vec3<bool>(true, false, false), 1u), Struct_1(vec3<bool>(true, false, false), 34038u), Struct_1(vec3<bool>(false, false, true), 0u), Struct_1(vec3<bool>(true, true, false), 39308u), Struct_1(vec3<bool>(false, true, true), 0u), Struct_1(vec3<bool>(true, false, true), 0u), Struct_1(vec3<bool>(true, false, true), 1u), Struct_1(vec3<bool>(false, true, true), 0u), Struct_1(vec3<bool>(true, false, false), 3990u), Struct_1(vec3<bool>(false, false, false), 1124u), Struct_1(vec3<bool>(false, false, false), 17472u), Struct_1(vec3<bool>(false, true, true), 75083u), Struct_1(vec3<bool>(false, false, true), 0u), Struct_1(vec3<bool>(true, true, false), 4294967295u), Struct_1(vec3<bool>(false, true, true), 0u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: f32) -> u32 {
    global1 = global2[_wgslsmith_index_u32(abs(~_wgslsmith_clamp_u32(u_input.a, 64404u, global1.b)), 2u)];
    let var_0 = Struct_1(!global1.a, _wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(global1.b, ~_wgslsmith_add_u32(global1.b, global1.b))));
    let var_1 = _wgslsmith_div_u32(var_0.b, ~global0.b);
    var var_2 = false;
    global3 = array<Struct_1, 31>();
    return var_1;
}

fn func_3(arg_0: u32, arg_1: bool) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(global0.b, arg_0)), 31u)];
    let var_1 = ~abs(~abs(min(vec3<u32>(14428u, arg_0, 1u), vec3<u32>(58974u, global1.b, 4294967295u))));
    var var_2 = !(!var_0.a.xx);
    let var_3 = !(arg_1 | select(arg_1 || true, var_0.a.x | any(vec4<bool>(false, global0.a.x, var_2.x, false)), arg_1));
    let var_4 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1051f - _wgslsmith_f_op_f32(f32(-1f) * -450f)), 2087f)));
    return global0.b;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<u32> {
    let var_0 = !select(vec4<bool>(!any(vec4<bool>(arg_1, global0.a.x, arg_2.a.x, false)), global0.a.x, any(vec3<bool>(false, false, global0.a.x)), _wgslsmith_f_op_f32(-arg_0) < _wgslsmith_f_op_f32(ceil(-1202f))), vec4<bool>(global1.a.x, all(!global0.a), any(vec4<bool>(global1.a.x, false, false, global0.a.x)), false), vec4<bool>(!(arg_2.a.x || true), global1.a.x, arg_1, true));
    let var_1 = !((_wgslsmith_div_u32(arg_2.b >> (0u % 32u), _wgslsmith_sub_u32(29502u, 10342u)) & ~0u) < ~_wgslsmith_clamp_u32(arg_2.b, 0u, func_1(-1000f)));
    let var_2 = Struct_1(!global0.a, 1u);
    let var_3 = Struct_1(vec3<bool>(true, var_2.a.x, var_0.x | !(!arg_2.a.x)), ~var_2.b);
    let var_4 = _wgslsmith_dot_vec3_u32(firstTrailingBit((~vec3<u32>(1u, arg_2.b, 1u) >> (reverseBits(vec3<u32>(4294967295u, 81036u, arg_2.b)) % vec3<u32>(32u))) ^ (abs(vec3<u32>(0u, var_3.b, 4294967295u)) << (~vec3<u32>(u_input.a, 4294967295u, 6938u) % vec3<u32>(32u)))), vec3<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b, var_3.b, arg_2.b), vec3<u32>(0u, 0u, u_input.a))), 36752u, ~func_3(~global1.b, var_2.b > 1u)));
    return countOneBits(~_wgslsmith_mult_vec2_u32(select(vec2<u32>(global1.b, 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(var_2.b, var_2.b)), vec2<bool>(var_2.a.x, false)), vec2<u32>(var_3.b, global0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 31>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-736f))) - _wgslsmith_f_op_f32(floor(366f))), _wgslsmith_f_op_f32(f32(-1f) * -1898f)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1252f, -416f)))) - vec2<f32>(-678f, _wgslsmith_f_op_f32(trunc(1211f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2081f, -1000f) * vec2<f32>(1530f, 215f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(778f, -421f)))))));
    global2 = array<Struct_1, 2>();
    global1 = Struct_1(global0.a, u_input.a);
    var var_1 = select(~(~vec4<u32>(~global0.b, global0.b, func_1(158f), ~4294967295u)), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.b, global1.b), func_2(_wgslsmith_f_op_f32(-var_0.x), any(global0.a), Struct_1(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), 4294967295u), ~vec2<i32>(u_input.b.x, -14861i))), ~(~38870u >> (_wgslsmith_mult_u32(0u, 0u) % 32u)), global1.b, u_input.a), select(select(!select(vec4<bool>(true, global1.a.x, global1.a.x, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)), select(!vec4<bool>(false, true, global1.a.x, true), select(vec4<bool>(true, global1.a.x, true, global0.a.x), vec4<bool>(false, global1.a.x, global1.a.x, global0.a.x), global0.a.x), all(global0.a)), false), !select(vec4<bool>(false, true, true, true), !vec4<bool>(false, global0.a.x, true, global0.a.x), vec4<bool>(true, global1.a.x, false, global1.a.x)), select(!vec4<bool>(global1.a.x, true, global0.a.x, global1.a.x), vec4<bool>(any(vec3<bool>(false, global0.a.x, global0.a.x)), true, !global1.a.x, true), !any(vec4<bool>(true, global1.a.x, global0.a.x, false)))));
    var_1 = vec4<u32>(31745u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(1u, countOneBits(global0.b), _wgslsmith_mult_u32(var_1.x, global1.b))), var_1.x, global1.b) >> (~_wgslsmith_mod_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 22175u, global0.b, 42833u), vec4<u32>(0u, 4294967295u, 0u, u_input.a))), ~(~vec4<u32>(global0.b, u_input.a, global0.b, var_1.x))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, firstTrailingBit(vec4<i32>(u_input.b.x & u_input.b.x, -5041i, -u_input.b.x, ~(-616i)) >> ((~vec4<u32>(60099u, 70944u, 4294967295u, global0.b) | reverseBits(vec4<u32>(var_1.x, 445u, 0u, 0u))) % vec4<u32>(32u))));
}

