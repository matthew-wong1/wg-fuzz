struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> f32 {
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    let var_0 = true | ((reverseBits(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a.x, 19u)])) == _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 6657u, global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)])), vec4<u32>(u_input.a.x, 0u, 10305u, 4294967295u))) & all(vec2<bool>(false, true)));
    var var_1 = vec4<u32>(~1u, 0u, ~_wgslsmith_mod_u32(firstLeadingBit(abs(66083u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(54383u, global0[_wgslsmith_index_u32(21785u, 19u)]), u_input.a), _wgslsmith_clamp_u32(u_input.a.x, 0u, 4294967295u))), global0[_wgslsmith_index_u32(u_input.a.x, 19u)]);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2119f * 1184f)));
}

fn func_1() -> Struct_1 {
    global0 = array<u32, 19>();
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_div_u32(0u, 44919u) << (~u_input.a.x % 32u), _wgslsmith_mult_u32(0u, _wgslsmith_div_u32(u_input.a.x, global0[_wgslsmith_index_u32(1u, 19u)])), ~max(13298u, 4294967295u), 70159u) ^ (vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(64417u, 19u)] >> (60518u % 32u), ~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 37021u), vec2<u32>(u_input.a.x, 2691u))) << (vec4<u32>(_wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18869u, 19u)], 19u)]), firstTrailingBit(0u), ~1u, ~87098u) % vec4<u32>(32u))), u_input.b.x);
    global0 = array<u32, 19>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    global0 = array<u32, 19>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 19>();
    let var_0 = u_input.b.x;
    var var_1 = select(!(!vec3<bool>(1u > global0[_wgslsmith_index_u32(38846u, 19u)], true, true)), !select(vec3<bool>(true, false, all(vec2<bool>(true, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, !all(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false)))));
    global0 = array<u32, 19>();
    let var_2 = !select(vec2<bool>(var_1.x, all(vec3<bool>(var_1.x, false, false))), vec2<bool>(var_1.x, var_1.x), true);
    var var_3 = countOneBits(max(~u_input.a.x | _wgslsmith_dot_vec3_u32(vec3<u32>(12392u, 1u, u_input.a.x), vec3<u32>(u_input.a.x, 54836u, global0[_wgslsmith_index_u32(u_input.a.x, 19u)])), ~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(12670u, 31617u, u_input.a.x), 19u)]) >> (u_input.a.x % 32u));
    var var_4 = func_1();
    let var_5 = vec2<i32>(-u_input.b.x, ~(~((i32(-1i) * -1i) >> (u_input.a.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.yzy);
}

